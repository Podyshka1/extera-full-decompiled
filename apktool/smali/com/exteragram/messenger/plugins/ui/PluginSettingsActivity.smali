.class public Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;
.super Lcom/exteragram/messenger/preferences/BasePreferencesActivity;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field private final createSubFragmentCallback:Lcom/chaquo/python/PyObject;

.field private final customTitle:Ljava/lang/String;

.field private final plugin:Lcom/exteragram/messenger/plugins/Plugin;

.field private resetItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private settingItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/exteragram/messenger/plugins/models/SettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private settingsLinkPrefix:Ljava/lang/String;

.field private targetSettingItemId:Ljava/lang/Integer;

.field private targetSettingName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$-R72rM-FuUorxfpbWGwqtWKlmKM(Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->lambda$didReceivedNotification$0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1MAwo5ztOlbRp19ztE46KL8tDEg(Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;Lcom/chaquo/python/PyObject;Lorg/telegram/ui/Components/UItem;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->lambda$openSubFragmentNative$18(Lcom/chaquo/python/PyObject;Lorg/telegram/ui/Components/UItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6yOzhvQo3iYJqoS9G4EqkMyYgm8(Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;Ljava/lang/String;ILcom/exteragram/messenger/plugins/models/SelectorSetting;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->lambda$showSelectorDialog$14(Ljava/lang/String;ILcom/exteragram/messenger/plugins/models/SelectorSetting;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8NPoCNuZCIM69GzSocmJzE-RAtE(Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;[Ljava/lang/String;ILjava/lang/String;Lcom/exteragram/messenger/plugins/models/SelectorSetting;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->lambda$showSelectorDialog$15(Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;[Ljava/lang/String;ILjava/lang/String;Lcom/exteragram/messenger/plugins/models/SelectorSetting;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DKO5xSkUEkarsHapUSjjRfvXyU8(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 530
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ej1L-yswp21mie-enk2MHXCMzU0(Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;Ljava/util/List;Lorg/telegram/ui/Components/UItem;Lcom/chaquo/python/PyObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->lambda$openSubFragmentNative$17(Ljava/util/List;Lorg/telegram/ui/Components/UItem;Lcom/chaquo/python/PyObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MKIOp2PZeoNGKMYo64IEzhn558w(Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->lambda$createView$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$O8-8spKE2-DykoFnqB0ru6o_Id0(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    .line 536
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 537
    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 538
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$Sk2wYkIt1oSh28wD0mdFI7aigMg(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 531
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$WNdTQGPHAR9kVzmLSxQKIGF1Qd4(Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->lambda$didReceivedNotification$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$WOpgTrW1HgTnHukG7T8ccmtuHyc(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    .line 534
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XtIWQFl7Q1nC9h9hJfTbZJvidog(Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->lambda$createView$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cXo1cKu_P2r1AM9qtb2NwkOuNdI(Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->lambda$createView$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$izUMK5EiijXo0sWH5lhcv2IQdmc(Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;Ljava/lang/String;ZLorg/telegram/ui/Components/UItem;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->lambda$onClick$6(Ljava/lang/String;ZLorg/telegram/ui/Components/UItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kE_slqCK8E-DA3ROqgt4Hg8ob6c(Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;Lcom/chaquo/python/PyObject;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->lambda$triggerOnChange$16(Lcom/chaquo/python/PyObject;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lIDH8Vxy2Z3vBm6iQHjA09eAca0(Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;Ljava/lang/String;ZLorg/telegram/ui/Components/UItem;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->lambda$onClick$7(Ljava/lang/String;ZLorg/telegram/ui/Components/UItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rnEoYDYgSR_GDTwOq2zfzW-XFqs(Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;Ljava/lang/String;Lcom/exteragram/messenger/plugins/models/InputSetting;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->lambda$showStringInputDialog$9(Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;Ljava/lang/String;Lcom/exteragram/messenger/plugins/models/InputSetting;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yepOeXVHoIhplnvP2gwF49d5VUQ(Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->lambda$createView$4(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yn5n7fv2PC9cSGEenwkejUNbpR8(Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;Ljava/lang/String;Ljava/lang/String;Lcom/exteragram/messenger/plugins/models/InputSetting;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->lambda$showStringInputDialog$8(Ljava/lang/String;Ljava/lang/String;Lcom/exteragram/messenger/plugins/models/InputSetting;)V

    return-void
.end method

.method public constructor <init>(Lcom/exteragram/messenger/plugins/Plugin;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    const/4 p1, 0x0

    .line 89
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->customTitle:Ljava/lang/String;

    .line 90
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->settingItems:Ljava/util/List;

    .line 91
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->createSubFragmentCallback:Lcom/chaquo/python/PyObject;

    .line 92
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->targetSettingName:Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->targetSettingItemId:Ljava/lang/Integer;

    .line 94
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->settingsLinkPrefix:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/String;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    const/4 p1, 0x0

    .line 99
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->customTitle:Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->settingItems:Ljava/util/List;

    .line 101
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->createSubFragmentCallback:Lcom/chaquo/python/PyObject;

    .line 102
    iput-object p2, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->targetSettingName:Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->targetSettingItemId:Ljava/lang/Integer;

    .line 104
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->settingsLinkPrefix:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/String;Ljava/util/List;Lcom/chaquo/python/PyObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/exteragram/messenger/plugins/Plugin;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/exteragram/messenger/plugins/models/SettingItem;",
            ">;",
            "Lcom/chaquo/python/PyObject;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 108
    invoke-direct/range {v0 .. v5}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;-><init>(Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/String;Ljava/util/List;Lcom/chaquo/python/PyObject;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/String;Ljava/util/List;Lcom/chaquo/python/PyObject;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/exteragram/messenger/plugins/Plugin;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/exteragram/messenger/plugins/models/SettingItem;",
            ">;",
            "Lcom/chaquo/python/PyObject;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    .line 113
    iput-object p2, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->customTitle:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->settingItems:Ljava/util/List;

    .line 115
    iput-object p4, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->createSubFragmentCallback:Lcom/chaquo/python/PyObject;

    .line 116
    iput-object p5, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->targetSettingName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 117
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->targetSettingItemId:Ljava/lang/Integer;

    .line 118
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->settingsLinkPrefix:Ljava/lang/String;

    return-void
.end method

.method private getStableId(Lcom/exteragram/messenger/plugins/models/SettingItem;)I
    .locals 6

    .line 584
    instance-of v0, p1, Lcom/exteragram/messenger/plugins/models/SwitchSetting;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    check-cast p1, Lcom/exteragram/messenger/plugins/models/SwitchSetting;

    const-wide v4, -0x53130a381c0974dbL    # -2.776713789929489E-92

    .line 585
    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/exteragram/messenger/plugins/models/SwitchSetting;->key:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    aput-object p1, v3, v1

    invoke-static {v3}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 586
    :cond_0
    instance-of v0, p1, Lcom/exteragram/messenger/plugins/models/InputSetting;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/exteragram/messenger/plugins/models/InputSetting;

    const-wide v4, -0x53130a3f1c0974dbL    # -2.776703548762463E-92

    .line 587
    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/exteragram/messenger/plugins/models/InputSetting;->key:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    aput-object p1, v3, v1

    invoke-static {v3}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 588
    :cond_1
    instance-of v0, p1, Lcom/exteragram/messenger/plugins/models/EditTextSetting;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/exteragram/messenger/plugins/models/EditTextSetting;

    const-wide v4, -0x53130a451c0974dbL    # -2.776694770619298E-92

    .line 589
    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/exteragram/messenger/plugins/models/EditTextSetting;->key:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    aput-object p1, v3, v1

    invoke-static {v3}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 590
    :cond_2
    instance-of v0, p1, Lcom/exteragram/messenger/plugins/models/SelectorSetting;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/exteragram/messenger/plugins/models/SelectorSetting;

    const-wide v4, -0x53130a4a1c0974dbL    # -2.7766874554999937E-92

    .line 591
    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/exteragram/messenger/plugins/models/SelectorSetting;->key:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    aput-object p1, v3, v1

    invoke-static {v3}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 592
    :cond_3
    instance-of v0, p1, Lcom/exteragram/messenger/plugins/models/HeaderSetting;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/exteragram/messenger/plugins/models/HeaderSetting;

    const-wide v4, -0x53130a531c0974dbL    # -2.776674288285246E-92

    .line 593
    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/exteragram/messenger/plugins/models/HeaderSetting;->text:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    aput-object p1, v3, v1

    invoke-static {v3}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 594
    :cond_4
    instance-of v0, p1, Lcom/exteragram/messenger/plugins/models/DividerSetting;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/exteragram/messenger/plugins/models/DividerSetting;

    const-wide v4, -0x53130a5a1c0974dbL    # -2.7766640471182203E-92

    .line 595
    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/exteragram/messenger/plugins/models/DividerSetting;->text:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    aput-object p1, v3, v1

    invoke-static {v3}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 596
    :cond_5
    instance-of v0, p1, Lcom/exteragram/messenger/plugins/models/TextSetting;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/exteragram/messenger/plugins/models/TextSetting;

    const-wide v4, -0x53130a621c0974dbL    # -2.7766523429273335E-92

    .line 597
    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/exteragram/messenger/plugins/models/TextSetting;->text:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    aput-object p1, v3, v1

    invoke-static {v3}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 598
    :cond_6
    instance-of v0, p1, Lcom/exteragram/messenger/plugins/models/CustomSetting;

    if-eqz v0, :cond_9

    check-cast p1, Lcom/exteragram/messenger/plugins/models/CustomSetting;

    const-wide v4, -0x53130a671c0974dbL    # -2.7766450278080293E-92

    .line 599
    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p1, Lcom/exteragram/messenger/plugins/models/CustomSetting;->item:Lorg/telegram/ui/Components/UItem;

    if-eqz v4, :cond_7

    iget v4, v4, Lorg/telegram/ui/Components/UItem;->id:I

    goto :goto_0

    :cond_7
    iget-object v4, p1, Lcom/exteragram/messenger/plugins/models/CustomSetting;->factory:Lcom/exteragram/messenger/plugins/models/CustomSetting$Factory;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object p1, p1, Lcom/exteragram/messenger/plugins/models/CustomSetting;->factoryArgs:Lcom/chaquo/python/PyObject;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/chaquo/python/PyObject;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_8
    const/4 p1, 0x0

    :goto_1
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    aput-object v4, v5, v1

    aput-object p1, v5, v3

    invoke-static {v5}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 601
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method private synthetic lambda$createView$2()V
    .locals 6

    .line 218
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->info:I

    sget v2, Lorg/telegram/messenger/R$string;->ResetPluginSettings:I

    iget-object v3, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v3}, Lcom/exteragram/messenger/plugins/Plugin;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$createView$3()V
    .locals 2

    .line 215
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v0

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v1}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/exteragram/messenger/plugins/PluginsController;->clearPluginSettingsPreferences(Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v0

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v1}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/exteragram/messenger/plugins/PluginsController;->loadPluginSettings(Ljava/lang/String;)V

    .line 217
    new-instance v0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda18;-><init>(Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$4(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    .line 207
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 208
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 213
    :cond_0
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->resetItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 p2, 0x3f000000    # 0.5f

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 214
    new-instance p1, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda2;-><init>(Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;)V

    invoke-static {p1}, Lcom/exteragram/messenger/plugins/PluginsController;->runOnPluginsQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$5(Landroid/view/View;)V
    .locals 4

    .line 203
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 204
    sget v0, Lorg/telegram/messenger/R$string;->ResetSettings:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 205
    sget v0, Lorg/telegram/messenger/R$string;->ResetPluginSettingsInfo:I

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v1}, Lcom/exteragram/messenger/plugins/Plugin;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 206
    sget v0, Lorg/telegram/messenger/R$string;->Reset:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 222
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 223
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 224
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v0, -0x1

    .line 225
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 227
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$didReceivedNotification$0(Ljava/util/List;)V
    .locals 1

    .line 168
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->settingItems:Ljava/util/List;

    .line 169
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 170
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$didReceivedNotification$1()V
    .locals 4

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->createSubFragmentCallback:Lcom/chaquo/python/PyObject;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/chaquo/python/PyObject;->call([Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 160
    sget-object v0, Lcom/exteragram/messenger/plugins/PluginsController;->engines:Lj$/util/concurrent/ConcurrentHashMap;

    const-wide v2, -0x53130abc1c0974dbL    # -2.7765206707798578E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;

    invoke-virtual {v1}, Lcom/chaquo/python/PyObject;->asList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->parsePySettingDefinitions(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_0
    new-instance v1, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda4;-><init>(Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;Ljava/util/List;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :catch_0
    return-void
.end method

.method private synthetic lambda$onClick$6(Ljava/lang/String;ZLorg/telegram/ui/Components/UItem;)V
    .locals 3

    .line 427
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v0

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v1}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/exteragram/messenger/plugins/PluginsController;->setPluginSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 428
    iget-object p3, p3, Lorg/telegram/ui/Components/UItem;->settingItem:Lcom/exteragram/messenger/plugins/models/SettingItem;

    instance-of v0, p3, Lcom/exteragram/messenger/plugins/models/SwitchSetting;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/exteragram/messenger/plugins/models/SwitchSetting;

    .line 429
    iget-object p3, p3, Lcom/exteragram/messenger/plugins/models/SwitchSetting;->onChangeCallback:Lcom/chaquo/python/PyObject;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p3, p1, p2}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->triggerOnChange(Lcom/chaquo/python/PyObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onClick$7(Ljava/lang/String;ZLorg/telegram/ui/Components/UItem;)V
    .locals 3

    .line 437
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v0

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v1}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/exteragram/messenger/plugins/PluginsController;->setPluginSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 438
    iget-object p3, p3, Lorg/telegram/ui/Components/UItem;->settingItem:Lcom/exteragram/messenger/plugins/models/SettingItem;

    instance-of v0, p3, Lcom/exteragram/messenger/plugins/models/SwitchSetting;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/exteragram/messenger/plugins/models/SwitchSetting;

    .line 439
    iget-object p3, p3, Lcom/exteragram/messenger/plugins/models/SwitchSetting;->onChangeCallback:Lcom/chaquo/python/PyObject;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p3, p1, p2}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->triggerOnChange(Lcom/chaquo/python/PyObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$openSubFragmentNative$17(Ljava/util/List;Lorg/telegram/ui/Components/UItem;Lcom/chaquo/python/PyObject;)V
    .locals 4

    .line 632
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 633
    iget-object v0, p2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 634
    iget-object v0, p2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->customTitle:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v0}, Lcom/exteragram/messenger/plugins/Plugin;->getName()Ljava/lang/String;

    move-result-object v0

    .line 637
    :goto_0
    new-instance v1, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;

    iget-object v2, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-direct {v1, v2, v0, p1, p3}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;-><init>(Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/String;Ljava/util/List;Lcom/chaquo/python/PyObject;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 639
    iget-object p3, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->settingsLinkPrefix:Ljava/lang/String;

    if-nez p3, :cond_2

    const-wide v2, -0x53130a8f1c0974dbL    # -2.7765865068535957E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->settingsLinkPrefix:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v2, -0x53130a901c0974dbL    # -2.776585043829735E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_1
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->settingItem:Lcom/exteragram/messenger/plugins/models/SettingItem;

    iget-object p2, p2, Lcom/exteragram/messenger/plugins/models/SettingItem;->linkAlias:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->setSettingsLinkPrefix(Ljava/lang/String;)Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;

    move-result-object p1

    .line 637
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_3
    return-void
.end method

.method private synthetic lambda$openSubFragmentNative$18(Lcom/chaquo/python/PyObject;Lorg/telegram/ui/Components/UItem;)V
    .locals 4

    .line 619
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 621
    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lcom/chaquo/python/PyObject;->call([Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 623
    sget-object v0, Lcom/exteragram/messenger/plugins/PluginsController;->engines:Lj$/util/concurrent/ConcurrentHashMap;

    const-wide v2, -0x53130a6e1c0974dbL    # -2.7766347866410034E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;

    invoke-virtual {v1}, Lcom/chaquo/python/PyObject;->asList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->parsePySettingDefinitions(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 631
    :cond_0
    :goto_0
    new-instance v1, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;Ljava/util/List;Lorg/telegram/ui/Components/UItem;Lcom/chaquo/python/PyObject;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :goto_1
    const-wide v0, -0x53130a751c0974dbL    # -2.7766245454739776E-92

    .line 626
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$showSelectorDialog$14(Ljava/lang/String;ILcom/exteragram/messenger/plugins/models/SelectorSetting;)V
    .locals 3

    .line 568
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v0

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v1}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/exteragram/messenger/plugins/PluginsController;->setPluginSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 569
    iget-object p3, p3, Lcom/exteragram/messenger/plugins/models/SelectorSetting;->onChangeCallback:Lcom/chaquo/python/PyObject;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p3, p1, p2}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->triggerOnChange(Lcom/chaquo/python/PyObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$showSelectorDialog$15(Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;[Ljava/lang/String;ILjava/lang/String;Lcom/exteragram/messenger/plugins/models/SelectorSetting;Landroid/view/View;)V
    .locals 0

    .line 565
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p7

    if-eqz p7, :cond_0

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 566
    :cond_0
    check-cast p2, Lorg/telegram/ui/Cells/TextCell;

    aget-object p1, p3, p4

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/Cells/TextCell;->setValue(Ljava/lang/CharSequence;Z)V

    .line 567
    new-instance p1, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda13;

    invoke-direct {p1, p0, p5, p4, p6}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda13;-><init>(Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;Ljava/lang/String;ILcom/exteragram/messenger/plugins/models/SelectorSetting;)V

    invoke-static {p1}, Lcom/exteragram/messenger/plugins/PluginsController;->runOnPluginsQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showStringInputDialog$8(Ljava/lang/String;Ljava/lang/String;Lcom/exteragram/messenger/plugins/models/InputSetting;)V
    .locals 2

    .line 509
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v0

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v1}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/exteragram/messenger/plugins/PluginsController;->setPluginSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 510
    iget-object p3, p3, Lcom/exteragram/messenger/plugins/models/InputSetting;->onChangeCallback:Lcom/chaquo/python/PyObject;

    invoke-direct {p0, p3, p1, p2}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->triggerOnChange(Lcom/chaquo/python/PyObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$showStringInputDialog$9(Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;Ljava/lang/String;Lcom/exteragram/messenger/plugins/models/InputSetting;)V
    .locals 1

    .line 503
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 504
    aget-object p2, p2, v0

    if-eqz p2, :cond_0

    .line 505
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 507
    :cond_0
    check-cast p3, Lorg/telegram/ui/Cells/TextCell;

    const/4 p2, 0x1

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Cells/TextCell;->setValue(Ljava/lang/CharSequence;Z)V

    .line 508
    new-instance p2, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0, p4, p1, p5}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda6;-><init>(Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;Ljava/lang/String;Ljava/lang/String;Lcom/exteragram/messenger/plugins/models/InputSetting;)V

    invoke-static {p2}, Lcom/exteragram/messenger/plugins/PluginsController;->runOnPluginsQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$triggerOnChange$16(Lcom/chaquo/python/PyObject;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 608
    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p1, v0}, Lcom/chaquo/python/PyObject;->call([Ljava/lang/Object;)Lcom/chaquo/python/PyObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 611
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v0, -0x53130a921c0974dbL    # -2.776582117782013E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v0}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v0, -0x53130aba1c0974dbL    # -2.7765235968275795E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private openSubFragmentNative(Lorg/telegram/ui/Components/UItem;Lcom/chaquo/python/PyObject;)V
    .locals 1

    .line 617
    new-instance v0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p2, p1}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda14;-><init>(Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;Lcom/chaquo/python/PyObject;Lorg/telegram/ui/Components/UItem;)V

    invoke-static {v0}, Lcom/exteragram/messenger/plugins/PluginsController;->runOnPluginsQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showSelectorDialog(Lorg/telegram/ui/Components/UItem;Landroid/view/View;Ljava/lang/String;)V
    .locals 12

    .line 545
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/telegram/ui/Components/UItem;->settingItem:Lcom/exteragram/messenger/plugins/models/SettingItem;

    instance-of v1, v0, Lcom/exteragram/messenger/plugins/models/SelectorSetting;

    if-eqz v1, :cond_2

    move-object v9, v0

    check-cast v9, Lcom/exteragram/messenger/plugins/models/SelectorSetting;

    .line 548
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 550
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 551
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 553
    iget-object v6, v9, Lcom/exteragram/messenger/plugins/models/SelectorSetting;->items:[Ljava/lang/String;

    const/4 v10, 0x0

    move v7, v10

    .line 555
    :goto_0
    array-length v2, v6

    if-ge v7, v2, :cond_1

    .line 556
    new-instance v11, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v11, v2}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x40800000    # 4.0f

    .line 557
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v11, v3, v10, v2, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 558
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackgroundChecked:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v11, v2, v3}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 559
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v2

    iget-object v3, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v3}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v3

    iget v5, v9, Lcom/exteragram/messenger/plugins/models/SelectorSetting;->defaultValue:I

    invoke-virtual {v2, v3, p3, v5}, Lcom/exteragram/messenger/plugins/PluginsController;->getPluginSettingInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 560
    aget-object v3, v6, v7

    if-ne v2, v7, :cond_0

    move v2, v1

    goto :goto_1

    :cond_0
    move v2, v10

    :goto_1
    invoke-virtual {v11, v3, v2}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/CharSequence;Z)V

    .line 561
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 562
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 564
    new-instance v2, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda15;

    move-object v3, p0

    move-object v5, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda15;-><init>(Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;[Ljava/lang/String;ILjava/lang/String;Lcom/exteragram/messenger/plugins/models/SelectorSetting;)V

    invoke-virtual {v11, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    move-object v3, p0

    .line 574
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    .line 575
    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 576
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 577
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 578
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 579
    invoke-virtual {v4, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 580
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    :cond_2
    move-object v3, p0

    return-void
.end method

.method private showStringInputDialog(Lorg/telegram/ui/Components/UItem;Landroid/view/View;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p1

    .line 481
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Components/UItem;->settingItem:Lcom/exteragram/messenger/plugins/models/SettingItem;

    instance-of v2, v1, Lcom/exteragram/messenger/plugins/models/InputSetting;

    if-eqz v2, :cond_1

    move-object v6, v1

    check-cast v6, Lcom/exteragram/messenger/plugins/models/InputSetting;

    const/4 v7, 0x1

    .line 485
    new-array v3, v7, [Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 486
    new-instance v8, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v8, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 487
    iget-object v0, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 489
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 490
    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 492
    iget-object v0, v6, Lcom/exteragram/messenger/plugins/models/InputSetting;->subtext:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 493
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 494
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41800000    # 16.0f

    .line 495
    invoke-virtual {v0, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 496
    iget-object v1, v6, Lcom/exteragram/messenger/plugins/models/InputSetting;->subtext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v14, 0x41c00000    # 24.0f

    const/high16 v15, 0x41400000    # 12.0f

    const/4 v10, -0x1

    const/4 v11, -0x2

    const/high16 v12, 0x41c00000    # 24.0f

    const/high16 v13, 0x40a00000    # 5.0f

    .line 497
    invoke-static/range {v10 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    :cond_0
    new-instance v2, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    .line 501
    iput-boolean v7, v2, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineYFix:Z

    .line 502
    new-instance v0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda7;

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda7;-><init>(Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;Ljava/lang/String;Lcom/exteragram/messenger/plugins/models/InputSetting;)V

    const/high16 v4, 0x41900000    # 18.0f

    .line 513
    invoke-virtual {v2, v7, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 514
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v4

    iget-object v5, v1, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v5}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v6, Lcom/exteragram/messenger/plugins/models/InputSetting;->defaultValue:Ljava/lang/String;

    move-object/from16 v10, p3

    invoke-virtual {v4, v5, v10, v6}, Lcom/exteragram/messenger/plugins/PluginsController;->getPluginSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 515
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 517
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_hintText:I

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintColor(I)V

    .line 518
    sget v4, Lorg/telegram/messenger/R$string;->EnterValue:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    .line 519
    invoke-virtual {v2, v7}, Landroid/view/View;->setFocusable(Z)V

    const v4, 0x24001

    .line 520
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 521
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 522
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v2, v5, v4, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setLineColors(III)V

    const/4 v4, 0x0

    .line 523
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v4, 0x40c00000    # 6.0f

    .line 524
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v14, 0x41c00000    # 24.0f

    const/high16 v15, 0x41200000    # 10.0f

    const/4 v10, -0x1

    const/4 v11, -0x2

    const/high16 v12, 0x41c00000    # 24.0f

    const/4 v13, 0x0

    .line 525
    invoke-static/range {v10 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 526
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->makeCustomMaxHeight()Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 527
    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/high16 v4, 0x43920000    # 292.0f

    .line 528
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v8, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setWidth(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 530
    sget v4, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda8;

    invoke-direct {v5, v0}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 531
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda9;

    invoke-direct {v4}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v8, v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 533
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    aput-object v0, v3, v6

    .line 534
    new-instance v4, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda10;

    invoke-direct {v4, v2}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 535
    aget-object v0, v3, v6

    new-instance v4, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda11;

    invoke-direct {v4, v2}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 540
    aget-object v0, v3, v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/AlertDialog;->setDismissDialogByButtons(Z)V

    .line 541
    aget-object v0, v3, v6

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    :cond_1
    move-object/from16 v1, p0

    return-void
.end method

.method private triggerOnChange(Lcom/chaquo/python/PyObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 605
    new-instance v0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda3;-><init>(Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;Lcom/chaquo/python/PyObject;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/exteragram/messenger/plugins/PluginsController;->runOnPluginsQueue(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public checkTargetSetting()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->targetSettingItemId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->scrollToItem(I)V

    const/4 v0, 0x0

    .line 240
    iput-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->targetSettingItemId:Ljava/lang/Integer;

    :cond_0
    return-void
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    .line 194
    invoke-super {p0, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    .line 196
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->createSubFragmentCallback:Lcom/chaquo/python/PyObject;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 198
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_reset:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->resetItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 199
    sget v1, Lorg/telegram/messenger/R$string;->Reset:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->resetItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v1

    iget-object v3, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v3}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/exteragram/messenger/plugins/PluginsController;->hasPluginSettingsPreferences(Ljava/lang/String;)Z

    move-result v1

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v0, v1, v3, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 201
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->resetItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->resetItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda12;-><init>(Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->checkTargetSetting()V

    .line 234
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 1

    .line 147
    sget p2, Lorg/telegram/messenger/NotificationCenter;->pluginSettingsRegistered:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_3

    .line 149
    array-length p1, p3

    if-lez p1, :cond_0

    aget-object p1, p3, v0

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 150
    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 152
    :goto_0
    iget-object p2, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    if-eqz p2, :cond_4

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 153
    :cond_1
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->createSubFragmentCallback:Lcom/chaquo/python/PyObject;

    if-eqz p1, :cond_2

    .line 154
    new-instance p1, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda5;-><init>(Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;)V

    invoke-static {p1}, Lcom/exteragram/messenger/plugins/PluginsController;->runOnPluginsQueue(Ljava/lang/Runnable;)V

    return-void

    .line 174
    :cond_2
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_4

    const/4 p2, 0x1

    .line 175
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 176
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->resetItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_4

    .line 177
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object p3

    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v0}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/exteragram/messenger/plugins/PluginsController;->hasPluginSettingsPreferences(Ljava/lang/String;)Z

    move-result p3

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {p1, p3, v0, p2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    return-void

    .line 181
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->pluginSettingsUnregistered:I

    if-ne p1, p2, :cond_4

    .line 182
    array-length p1, p3

    if-lez p1, :cond_4

    aget-object p1, p3, v0

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_4

    check-cast p1, Ljava/lang/String;

    .line 183
    iget-object p2, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 184
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object p1

    iget-object p2, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {p2}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/exteragram/messenger/plugins/PluginsController;->hasPluginSettings(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 185
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_4
    return-void
.end method

.method protected fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/UItem;",
            ">;",
            "Lorg/telegram/ui/Components/UniversalAdapter;",
            ")V"
        }
    .end annotation

    .line 245
    iget-object p2, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    if-nez p2, :cond_0

    goto/16 :goto_b

    .line 248
    :cond_0
    iget-object p2, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->settingItems:Ljava/util/List;

    if-eqz p2, :cond_1

    goto :goto_0

    .line 251
    :cond_1
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object p2

    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v0}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/exteragram/messenger/plugins/PluginsController;->getPluginSettingsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_13

    .line 254
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_b

    .line 259
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/exteragram/messenger/plugins/models/SettingItem;

    if-nez v2, :cond_4

    goto :goto_1

    .line 263
    :cond_4
    iget-object v4, v2, Lcom/exteragram/messenger/plugins/models/SettingItem;->icon:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 264
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    .line 265
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, v2, Lcom/exteragram/messenger/plugins/models/SettingItem;->icon:Ljava/lang/String;

    const-wide v7, -0x531309d01c0974dbL    # -2.7768659444110164E-92

    invoke-static {v7, v8}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v7, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    :cond_5
    move v4, v0

    :goto_2
    const/4 v5, 0x1

    .line 270
    :try_start_0
    iget-object v6, v2, Lcom/exteragram/messenger/plugins/models/SettingItem;->type:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_9

    :sswitch_0
    const-wide v7, -0x53130a051c0974dbL    # -2.7767884041463918E-92

    invoke-static {v7, v8}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 347
    move-object v4, v2

    check-cast v4, Lcom/exteragram/messenger/plugins/models/DividerSetting;

    .line 348
    iget-object v4, v4, Lcom/exteragram/messenger/plugins/models/DividerSetting;->text:Ljava/lang/String;

    if-eqz v4, :cond_6

    invoke-static {v4, p0, v3}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->fullyFormatText(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_3

    :catch_0
    move-exception v4

    goto/16 :goto_8

    :cond_6
    const-wide v6, -0x53130a141c0974dbL    # -2.776766458788479E-92

    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-static {v4}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    goto/16 :goto_a

    :sswitch_1
    const-wide v7, -0x531309f71c0974dbL    # -2.7768088864804436E-92

    .line 270
    invoke-static {v7, v8}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 315
    move-object v6, v2

    check-cast v6, Lcom/exteragram/messenger/plugins/models/SelectorSetting;

    .line 316
    iget-object v7, v6, Lcom/exteragram/messenger/plugins/models/SelectorSetting;->key:Ljava/lang/String;

    if-eqz v7, :cond_10

    iget-object v7, v6, Lcom/exteragram/messenger/plugins/models/SelectorSetting;->text:Ljava/lang/String;

    if-eqz v7, :cond_10

    iget-object v7, v6, Lcom/exteragram/messenger/plugins/models/SelectorSetting;->items:[Ljava/lang/String;

    if-eqz v7, :cond_10

    array-length v7, v7

    if-eqz v7, :cond_10

    .line 317
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v7

    iget-object v8, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v8}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v6, Lcom/exteragram/messenger/plugins/models/SelectorSetting;->key:Ljava/lang/String;

    iget v10, v6, Lcom/exteragram/messenger/plugins/models/SelectorSetting;->defaultValue:I

    invoke-virtual {v7, v8, v9, v10}, Lcom/exteragram/messenger/plugins/PluginsController;->getPluginSettingInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    if-ltz v7, :cond_7

    .line 318
    iget-object v8, v6, Lcom/exteragram/messenger/plugins/models/SelectorSetting;->items:[Ljava/lang/String;

    array-length v8, v8

    if-lt v7, v8, :cond_8

    .line 319
    :cond_7
    iget v7, v6, Lcom/exteragram/messenger/plugins/models/SelectorSetting;->defaultValue:I

    iget-object v8, v6, Lcom/exteragram/messenger/plugins/models/SelectorSetting;->items:[Ljava/lang/String;

    array-length v8, v8

    sub-int/2addr v8, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 320
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v8

    iget-object v9, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v9}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v6, Lcom/exteragram/messenger/plugins/models/SelectorSetting;->key:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/exteragram/messenger/plugins/PluginsController;->setPluginSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 322
    :cond_8
    iget-object v8, v6, Lcom/exteragram/messenger/plugins/models/SelectorSetting;->text:Ljava/lang/String;

    iget-object v9, v6, Lcom/exteragram/messenger/plugins/models/SelectorSetting;->items:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-static {v0, v8, v9}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v8

    .line 323
    iget-object v9, v6, Lcom/exteragram/messenger/plugins/models/SelectorSetting;->items:[Ljava/lang/String;

    iput-object v9, v8, Lorg/telegram/ui/Components/UItem;->texts:[Ljava/lang/String;

    .line 324
    iput v7, v8, Lorg/telegram/ui/Components/UItem;->intValue:I

    if-eqz v4, :cond_9

    .line 326
    iput v4, v8, Lorg/telegram/ui/Components/UItem;->iconResId:I

    .line 328
    :cond_9
    iget-object v4, v6, Lcom/exteragram/messenger/plugins/models/SelectorSetting;->key:Ljava/lang/String;

    iput-object v4, v8, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    .line 329
    iput-object v6, v8, Lorg/telegram/ui/Components/UItem;->settingItem:Lcom/exteragram/messenger/plugins/models/SettingItem;

    :goto_4
    move-object v4, v8

    goto/16 :goto_a

    :sswitch_2
    const-wide v7, -0x531309e71c0974dbL    # -2.776832294862217E-92

    .line 270
    invoke-static {v7, v8}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 297
    move-object v6, v2

    check-cast v6, Lcom/exteragram/messenger/plugins/models/InputSetting;

    .line 298
    iget-object v7, v6, Lcom/exteragram/messenger/plugins/models/InputSetting;->key:Ljava/lang/String;

    if-eqz v7, :cond_10

    iget-object v7, v6, Lcom/exteragram/messenger/plugins/models/InputSetting;->text:Ljava/lang/String;

    if-eqz v7, :cond_10

    .line 299
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v7

    iget-object v8, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v8}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v6, Lcom/exteragram/messenger/plugins/models/InputSetting;->key:Ljava/lang/String;

    iget-object v10, v6, Lcom/exteragram/messenger/plugins/models/InputSetting;->defaultValue:Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v10}, Lcom/exteragram/messenger/plugins/PluginsController;->getPluginSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 300
    iget-object v8, v6, Lcom/exteragram/messenger/plugins/models/InputSetting;->text:Ljava/lang/String;

    invoke-static {v0, v8, v7}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v7

    if-eqz v4, :cond_a

    .line 302
    iput v4, v7, Lorg/telegram/ui/Components/UItem;->iconResId:I

    .line 304
    :cond_a
    iget-object v4, v6, Lcom/exteragram/messenger/plugins/models/InputSetting;->key:Ljava/lang/String;

    iput-object v4, v7, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    .line 305
    iput-object v6, v7, Lorg/telegram/ui/Components/UItem;->settingItem:Lcom/exteragram/messenger/plugins/models/SettingItem;

    :cond_b
    :goto_5
    move-object v4, v7

    goto/16 :goto_a

    :sswitch_3
    const-wide v7, -0x53130a001c0974dbL    # -2.776795719265696E-92

    .line 270
    invoke-static {v7, v8}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 333
    move-object v6, v2

    check-cast v6, Lcom/exteragram/messenger/plugins/models/TextSetting;

    .line 334
    iget-object v7, v6, Lcom/exteragram/messenger/plugins/models/TextSetting;->text:Ljava/lang/String;

    invoke-static {v0, v7}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v7

    .line 335
    iput-object v6, v7, Lorg/telegram/ui/Components/UItem;->settingItem:Lcom/exteragram/messenger/plugins/models/SettingItem;

    if-eqz v4, :cond_c

    .line 337
    iput v4, v7, Lorg/telegram/ui/Components/UItem;->iconResId:I

    .line 339
    :cond_c
    iget-boolean v4, v6, Lcom/exteragram/messenger/plugins/models/TextSetting;->accent:Z

    iput-boolean v4, v7, Lorg/telegram/ui/Components/UItem;->accent:Z

    .line 340
    iget-boolean v4, v6, Lcom/exteragram/messenger/plugins/models/TextSetting;->red:Z

    iput-boolean v4, v7, Lorg/telegram/ui/Components/UItem;->red:Z

    .line 341
    iget-object v4, v6, Lcom/exteragram/messenger/plugins/models/TextSetting;->subtext:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 342
    iget-object v4, v6, Lcom/exteragram/messenger/plugins/models/TextSetting;->subtext:Ljava/lang/String;

    iput-object v4, v7, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    const/16 v4, 0x3c

    .line 343
    iput v4, v7, Lorg/telegram/ui/Components/UItem;->intValue:I

    goto :goto_5

    :sswitch_4
    const-wide v7, -0x531309e01c0974dbL    # -2.776842536029243E-92

    .line 270
    invoke-static {v7, v8}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 279
    move-object v6, v2

    check-cast v6, Lcom/exteragram/messenger/plugins/models/SwitchSetting;

    .line 280
    iget-object v7, v6, Lcom/exteragram/messenger/plugins/models/SwitchSetting;->key:Ljava/lang/String;

    if-eqz v7, :cond_10

    iget-object v7, v6, Lcom/exteragram/messenger/plugins/models/SwitchSetting;->text:Ljava/lang/String;

    if-eqz v7, :cond_10

    .line 281
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v7

    iget-object v8, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v8}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v6, Lcom/exteragram/messenger/plugins/models/SwitchSetting;->key:Ljava/lang/String;

    iget-boolean v10, v6, Lcom/exteragram/messenger/plugins/models/SwitchSetting;->defaultValue:Z

    invoke-virtual {v7, v8, v9, v10}, Lcom/exteragram/messenger/plugins/PluginsController;->getPluginSettingBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    .line 282
    iget-object v8, v6, Lcom/exteragram/messenger/plugins/models/SwitchSetting;->text:Ljava/lang/String;

    invoke-static {v0, v8}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v8

    .line 283
    invoke-virtual {v8, v7}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    .line 284
    iput-boolean v0, v8, Lorg/telegram/ui/Components/UItem;->drawLine:Z

    .line 285
    iget-object v7, v6, Lcom/exteragram/messenger/plugins/models/SwitchSetting;->subtext:Ljava/lang/String;

    if-eqz v7, :cond_d

    .line 286
    iput-object v7, v8, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    .line 287
    iput-boolean v5, v8, Lorg/telegram/ui/Components/UItem;->multiline:Z

    :cond_d
    if-eqz v4, :cond_e

    .line 290
    iput v4, v8, Lorg/telegram/ui/Components/UItem;->iconResId:I

    .line 292
    :cond_e
    iget-object v4, v6, Lcom/exteragram/messenger/plugins/models/SwitchSetting;->key:Ljava/lang/String;

    iput-object v4, v8, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    .line 293
    iput-object v6, v8, Lorg/telegram/ui/Components/UItem;->settingItem:Lcom/exteragram/messenger/plugins/models/SettingItem;

    goto/16 :goto_4

    :sswitch_5
    const-wide v7, -0x531309d91c0974dbL    # -2.7768527771962688E-92

    .line 270
    invoke-static {v7, v8}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 272
    move-object v4, v2

    check-cast v4, Lcom/exteragram/messenger/plugins/models/HeaderSetting;

    .line 273
    iget-object v6, v4, Lcom/exteragram/messenger/plugins/models/HeaderSetting;->text:Ljava/lang/String;

    if-eqz v6, :cond_10

    .line 274
    invoke-static {v6}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v6

    .line 275
    iput-object v4, v6, Lorg/telegram/ui/Components/UItem;->settingItem:Lcom/exteragram/messenger/plugins/models/SettingItem;

    :goto_6
    move-object v4, v6

    goto :goto_a

    :sswitch_6
    const-wide v7, -0x53130a0d1c0974dbL    # -2.776776699955505E-92

    .line 270
    invoke-static {v7, v8}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 351
    move-object v4, v2

    check-cast v4, Lcom/exteragram/messenger/plugins/models/CustomSetting;

    .line 352
    iget-object v6, v4, Lcom/exteragram/messenger/plugins/models/CustomSetting;->item:Lorg/telegram/ui/Components/UItem;

    if-eqz v6, :cond_f

    goto :goto_7

    :cond_f
    iget-object v6, v4, Lcom/exteragram/messenger/plugins/models/CustomSetting;->factory:Lcom/exteragram/messenger/plugins/models/CustomSetting$Factory;

    iget-object v7, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    iget-object v8, v4, Lcom/exteragram/messenger/plugins/models/CustomSetting;->factoryArgs:Lcom/chaquo/python/PyObject;

    invoke-virtual {v6, v7, v4, v8}, Lcom/exteragram/messenger/plugins/models/CustomSetting$Factory;->create(Lcom/exteragram/messenger/plugins/Plugin;Lcom/exteragram/messenger/plugins/models/CustomSetting;Lcom/chaquo/python/PyObject;)Lorg/telegram/ui/Components/UItem;

    move-result-object v6

    .line 353
    :goto_7
    iput-object v4, v6, Lorg/telegram/ui/Components/UItem;->settingItem:Lcom/exteragram/messenger/plugins/models/SettingItem;

    goto :goto_6

    :sswitch_7
    const-wide v7, -0x531309ed1c0974dbL    # -2.776823516719052E-92

    .line 270
    invoke-static {v7, v8}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 309
    move-object v4, v2

    check-cast v4, Lcom/exteragram/messenger/plugins/models/EditTextSetting;

    .line 310
    iget-object v6, v4, Lcom/exteragram/messenger/plugins/models/EditTextSetting;->key:Ljava/lang/String;

    if-eqz v6, :cond_10

    iget-object v6, v4, Lcom/exteragram/messenger/plugins/models/EditTextSetting;->hint:Ljava/lang/String;

    if-eqz v6, :cond_10

    .line 311
    iget-object v6, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-static {v6, v4}, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell$Factory;->as(Lcom/exteragram/messenger/plugins/Plugin;Lcom/exteragram/messenger/plugins/models/EditTextSetting;)Lorg/telegram/ui/Components/UItem;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :goto_8
    const-wide v6, -0x53130a151c0974dbL    # -2.7767649957646183E-92

    .line 359
    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v6

    const-wide v7, -0x53130a241c0974dbL    # -2.7767430504067057E-92

    invoke-static {v7, v8}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_9
    move-object v4, v3

    :goto_a
    if-eqz v4, :cond_3

    .line 364
    invoke-direct {p0, v2}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->getStableId(Lcom/exteragram/messenger/plugins/models/SettingItem;)I

    move-result v2

    iput v2, v4, Lorg/telegram/ui/Components/UItem;->id:I

    .line 365
    iget-object v2, v4, Lorg/telegram/ui/Components/UItem;->settingItem:Lcom/exteragram/messenger/plugins/models/SettingItem;

    if-eqz v2, :cond_11

    iget-object v2, v2, Lcom/exteragram/messenger/plugins/models/SettingItem;->linkAlias:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 366
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->targetSettingName:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 367
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, v4, Lorg/telegram/ui/Components/UItem;->settingItem:Lcom/exteragram/messenger/plugins/models/SettingItem;

    iget-object v2, v2, Lcom/exteragram/messenger/plugins/models/SettingItem;->linkAlias:Ljava/lang/String;

    iget-object v6, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->targetSettingName:Ljava/lang/String;

    .line 368
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 369
    iget v1, v4, Lorg/telegram/ui/Components/UItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->targetSettingItemId:Ljava/lang/Integer;

    .line 371
    iput-object v3, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->targetSettingName:Ljava/lang/String;

    move v1, v5

    .line 373
    :cond_11
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_12
    if-nez v1, :cond_13

    .line 376
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->targetSettingName:Ljava/lang/String;

    if-eqz p1, :cond_13

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 377
    invoke-static {}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->getInstance()Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->onSettingNotFound(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 378
    iput-object v3, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->targetSettingName:Ljava/lang/String;

    :cond_13
    :goto_b
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f3939be -> :sswitch_7
        -0x5069748f -> :sswitch_6
        -0x48cb1d73 -> :sswitch_5
        -0x350448cc -> :sswitch_4
        0x36452d -> :sswitch_3
        0x5fb57ca -> :sswitch_2
        0x4705f3df -> :sswitch_1
        0x63cc1319 -> :sswitch_0
    .end sparse-switch
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->customTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v0}, Lcom/exteragram/messenger/plugins/Plugin;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 2

    if-eqz p1, :cond_9

    .line 383
    iget-object p3, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    if-nez p3, :cond_0

    goto/16 :goto_0

    .line 387
    :cond_0
    iget-object p4, p1, Lorg/telegram/ui/Components/UItem;->settingItem:Lcom/exteragram/messenger/plugins/models/SettingItem;

    instance-of p5, p4, Lcom/exteragram/messenger/plugins/models/TextSetting;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_2

    move-object p3, p4

    check-cast p3, Lcom/exteragram/messenger/plugins/models/TextSetting;

    .line 388
    iget-object p5, p3, Lcom/exteragram/messenger/plugins/models/TextSetting;->createSubFragmentCallback:Lcom/chaquo/python/PyObject;

    if-eqz p5, :cond_1

    .line 389
    invoke-direct {p0, p1, p5}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->openSubFragmentNative(Lorg/telegram/ui/Components/UItem;Lcom/chaquo/python/PyObject;)V

    return-void

    .line 391
    :cond_1
    iget-object p3, p3, Lcom/exteragram/messenger/plugins/models/TextSetting;->onClickCallback:Lcom/chaquo/python/PyObject;

    if-eqz p3, :cond_5

    .line 393
    :try_start_0
    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v0

    invoke-virtual {p3, p1}, Lcom/chaquo/python/PyObject;->call([Ljava/lang/Object;)Lcom/chaquo/python/PyObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 398
    :cond_2
    instance-of p5, p4, Lcom/exteragram/messenger/plugins/models/CustomSetting;

    if-eqz p5, :cond_5

    check-cast p4, Lcom/exteragram/messenger/plugins/models/CustomSetting;

    .line 399
    iget-object p5, p4, Lcom/exteragram/messenger/plugins/models/CustomSetting;->createSubFragmentCallback:Lcom/chaquo/python/PyObject;

    if-eqz p5, :cond_3

    .line 400
    invoke-direct {p0, p1, p5}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->openSubFragmentNative(Lorg/telegram/ui/Components/UItem;Lcom/chaquo/python/PyObject;)V

    return-void

    .line 404
    :cond_3
    iget-object p5, p4, Lcom/exteragram/messenger/plugins/models/CustomSetting;->factory:Lcom/exteragram/messenger/plugins/models/CustomSetting$Factory;

    if-eqz p5, :cond_4

    .line 406
    :try_start_1
    invoke-virtual {p5, p3, p1, p2}, Lcom/exteragram/messenger/plugins/models/CustomSetting$Factory;->onClick(Lcom/exteragram/messenger/plugins/Plugin;Lorg/telegram/ui/Components/UItem;Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 409
    :cond_4
    iget-object p1, p4, Lcom/exteragram/messenger/plugins/models/CustomSetting;->onClickCallback:Lcom/chaquo/python/PyObject;

    if-eqz p1, :cond_9

    .line 411
    :try_start_2
    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v0

    invoke-virtual {p1, p3}, Lcom/chaquo/python/PyObject;->call([Ljava/lang/Object;)Lcom/chaquo/python/PyObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 418
    :cond_5
    iget-object p3, p1, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    instance-of p5, p3, Ljava/lang/String;

    if-eqz p5, :cond_9

    check-cast p3, Ljava/lang/String;

    .line 422
    instance-of p5, p2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz p5, :cond_6

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 423
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p4

    xor-int/2addr p4, v1

    .line 424
    invoke-virtual {p2, p4}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 425
    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    .line 426
    new-instance p2, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda16;

    invoke-direct {p2, p0, p3, p4, p1}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda16;-><init>(Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;Ljava/lang/String;ZLorg/telegram/ui/Components/UItem;)V

    invoke-static {p2}, Lcom/exteragram/messenger/plugins/PluginsController;->runOnPluginsQueue(Ljava/lang/Runnable;)V

    return-void

    .line 432
    :cond_6
    instance-of p5, p2, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    if-eqz p5, :cond_7

    check-cast p2, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    .line 433
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->isChecked()Z

    move-result p4

    xor-int/2addr p4, v1

    .line 434
    invoke-virtual {p2, p4}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setChecked(Z)V

    .line 435
    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    .line 436
    new-instance p2, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda17;

    invoke-direct {p2, p0, p3, p4, p1}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity$$ExternalSyntheticLambda17;-><init>(Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;Ljava/lang/String;ZLorg/telegram/ui/Components/UItem;)V

    invoke-static {p2}, Lcom/exteragram/messenger/plugins/PluginsController;->runOnPluginsQueue(Ljava/lang/Runnable;)V

    return-void

    .line 442
    :cond_7
    instance-of p5, p2, Lorg/telegram/ui/Cells/TextCell;

    if-eqz p5, :cond_9

    .line 443
    instance-of p5, p4, Lcom/exteragram/messenger/plugins/models/SelectorSetting;

    if-eqz p5, :cond_8

    .line 444
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->showSelectorDialog(Lorg/telegram/ui/Components/UItem;Landroid/view/View;Ljava/lang/String;)V

    return-void

    .line 445
    :cond_8
    instance-of p4, p4, Lcom/exteragram/messenger/plugins/models/InputSetting;

    if-eqz p4, :cond_9

    .line 446
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->showStringInputDialog(Lorg/telegram/ui/Components/UItem;Landroid/view/View;Ljava/lang/String;)V

    :catch_0
    :cond_9
    :goto_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 133
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->pluginSettingsRegistered:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 134
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->pluginSettingsUnregistered:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 135
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 140
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->pluginSettingsRegistered:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 141
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->pluginSettingsUnregistered:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 142
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    return-void
.end method

.method protected onLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
    .locals 1

    const/4 p3, 0x0

    if-eqz p1, :cond_3

    .line 452
    iget-object p4, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    if-nez p4, :cond_0

    goto :goto_0

    .line 456
    :cond_0
    iget-object p4, p1, Lorg/telegram/ui/Components/UItem;->settingItem:Lcom/exteragram/messenger/plugins/models/SettingItem;

    iget-object p5, p4, Lcom/exteragram/messenger/plugins/models/SettingItem;->onLongClickCallback:Lcom/chaquo/python/PyObject;

    const/4 v0, 0x1

    if-eqz p5, :cond_1

    .line 458
    :try_start_0
    new-array p1, v0, [Ljava/lang/Object;

    aput-object p2, p1, p3

    invoke-virtual {p5, p1}, Lcom/chaquo/python/PyObject;->call([Ljava/lang/Object;)Lcom/chaquo/python/PyObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0

    .line 464
    :cond_1
    iget-object p4, p4, Lcom/exteragram/messenger/plugins/models/SettingItem;->linkAlias:Ljava/lang/String;

    if-eqz p4, :cond_2

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 465
    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->settingItem:Lcom/exteragram/messenger/plugins/models/SettingItem;

    iget-object p3, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {p3}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->settingsLinkPrefix:Ljava/lang/String;

    invoke-virtual {p1, p3, p4}, Lcom/exteragram/messenger/plugins/models/SettingItem;->getLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->showCopyLinkOptions(Landroid/view/View;Ljava/lang/String;)V

    return v0

    .line 469
    :cond_2
    iget-object p4, p1, Lorg/telegram/ui/Components/UItem;->settingItem:Lcom/exteragram/messenger/plugins/models/SettingItem;

    instance-of p5, p4, Lcom/exteragram/messenger/plugins/models/CustomSetting;

    if-eqz p5, :cond_3

    check-cast p4, Lcom/exteragram/messenger/plugins/models/CustomSetting;

    iget-object p4, p4, Lcom/exteragram/messenger/plugins/models/CustomSetting;->factory:Lcom/exteragram/messenger/plugins/models/CustomSetting$Factory;

    if-eqz p4, :cond_3

    .line 471
    :try_start_1
    iget-object p3, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {p4, p3, p1, p2}, Lcom/exteragram/messenger/plugins/models/CustomSetting$Factory;->onLongClick(Lcom/exteragram/messenger/plugins/Plugin;Lorg/telegram/ui/Components/UItem;Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return v0

    :cond_3
    :goto_0
    return p3
.end method

.method public setSettingsLinkPrefix(Ljava/lang/String;)Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginSettingsActivity;->settingsLinkPrefix:Ljava/lang/String;

    return-object p0
.end method
