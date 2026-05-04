.class public Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;
.super Lorg/telegram/ui/Cells/EditTextCell;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell$Factory;
    }
.end annotation


# static fields
.field private static final SAVE_DEBOUNCE_MS:I = 0x2ee


# instance fields
.field private currentSetting:Lcom/exteragram/messenger/plugins/models/EditTextSetting;

.field private pendingSaveRunnable:Ljava/lang/Runnable;

.field private pluginId:Ljava/lang/String;

.field private final saveTextWatcher:Landroid/text/TextWatcher;

.field private valueToSave:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$21LFMD-bklwashUcrD_hg0JMOJw(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 1

    .line 260
    new-instance p4, Ljava/lang/StringBuilder;

    sub-int p5, p3, p2

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 p5, 0x1

    :goto_0
    if-ge p2, p3, :cond_1

    .line 263
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p6

    .line 264
    invoke-static {p6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/4 p5, 0x0

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 274
    :cond_2
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RSqC7GymVI-yGBvoIHtogVrOUG4(Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;Lcom/exteragram/messenger/plugins/models/EditTextSetting;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;->lambda$scheduleSave$0(Lcom/exteragram/messenger/plugins/models/EditTextSetting;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WPvEcxProg5ymfCZsHe0-XJtAAM(Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;Lcom/chaquo/python/PyObject;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;->lambda$triggerOnChange$2(Lcom/chaquo/python/PyObject;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_LXl1BlildajkORZ8oLzZkxzHgg(Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;Lcom/exteragram/messenger/plugins/models/EditTextSetting;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;->lambda$scheduleSave$1(Lcom/exteragram/messenger/plugins/models/EditTextSetting;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvalueToSave(Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;->valueToSave:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleSave(Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;->scheduleSave()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    .line 59
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Cells/EditTextCell;-><init>(Landroid/content/Context;Ljava/lang/String;ZZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 60
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 p2, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 63
    new-instance p1, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell$1;

    invoke-direct {p1, p0}, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell$1;-><init>(Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;)V

    iput-object p1, v0, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;->saveTextWatcher:Landroid/text/TextWatcher;

    .line 76
    iget-object p2, v0, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private createInputFilter(Ljava/lang/String;)Landroid/text/InputFilter;
    .locals 4

    .line 246
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 250
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    new-instance v0, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell$$ExternalSyntheticLambda2;-><init>(Ljava/util/regex/Pattern;)V

    return-object v0

    :catch_0
    move-exception v0

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid mask for EditText: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private flushPendingSave()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;->pendingSaveRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 122
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 123
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;->pendingSaveRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;->pendingSaveRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private synthetic lambda$scheduleSave$0(Lcom/exteragram/messenger/plugins/models/EditTextSetting;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 94
    iget v0, p1, Lcom/exteragram/messenger/plugins/models/EditTextSetting;->maxLength:I

    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p1, Lcom/exteragram/messenger/plugins/models/EditTextSetting;->maxLength:I

    if-le v0, v1, :cond_0

    .line 95
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p1, Lcom/exteragram/messenger/plugins/models/EditTextSetting;->maxLength:I

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, p4, v1}, Lcom/exteragram/messenger/plugins/PluginsController;->setPluginSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v0

    invoke-virtual {v0, p3, p4, p2}, Lcom/exteragram/messenger/plugins/PluginsController;->setPluginSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    :goto_0
    iget-object p1, p1, Lcom/exteragram/messenger/plugins/models/EditTextSetting;->onChangeCallback:Lcom/chaquo/python/PyObject;

    invoke-direct {p0, p1, p4, p2}, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;->triggerOnChange(Lcom/chaquo/python/PyObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$scheduleSave$1(Lcom/exteragram/messenger/plugins/models/EditTextSetting;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;->pendingSaveRunnable:Ljava/lang/Runnable;

    .line 93
    new-instance v1, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell$$ExternalSyntheticLambda3;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell$$ExternalSyntheticLambda3;-><init>(Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;Lcom/exteragram/messenger/plugins/models/EditTextSetting;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/exteragram/messenger/plugins/PluginsController;->runOnPluginsQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$triggerOnChange$2(Lcom/chaquo/python/PyObject;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 237
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

    .line 240
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error executing on_change callback for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;->pluginId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private scheduleSave()V
    .locals 7

    .line 80
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;->pendingSaveRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 81
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 84
    :cond_0
    iget-object v3, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;->currentSetting:Lcom/exteragram/messenger/plugins/models/EditTextSetting;

    if-eqz v3, :cond_1

    iget-object v0, v3, Lcom/exteragram/messenger/plugins/models/EditTextSetting;->key:Ljava/lang/String;

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 85
    :goto_1
    iget-object v4, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;->valueToSave:Ljava/lang/String;

    .line 86
    iget-object v5, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;->pluginId:Ljava/lang/String;

    if-eqz v6, :cond_2

    if-nez v5, :cond_3

    :cond_2
    move-object v2, p0

    goto :goto_2

    .line 91
    :cond_3
    new-instance v1, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell$$ExternalSyntheticLambda0;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;Lcom/exteragram/messenger/plugins/models/EditTextSetting;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v2, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;->pendingSaveRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2ee

    .line 103
    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :goto_2
    return-void
.end method

.method private setWatchersEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 197
    iget-object p1, p0, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;->saveTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 198
    iget-object p1, p0, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;->saveTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    .line 200
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;->saveTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private triggerOnChange(Lcom/chaquo/python/PyObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 234
    new-instance v0, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;Lcom/chaquo/python/PyObject;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/exteragram/messenger/plugins/PluginsController;->runOnPluginsQueue(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/String;Lcom/exteragram/messenger/plugins/models/EditTextSetting;)V
    .locals 6

    .line 129
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;->currentSetting:Lcom/exteragram/messenger/plugins/models/EditTextSetting;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/exteragram/messenger/plugins/models/EditTextSetting;->key:Ljava/lang/String;

    iget-object v3, p2, Lcom/exteragram/messenger/plugins/models/EditTextSetting;->key:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 132
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;->flushPendingSave()V

    .line 135
    :cond_1
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;->pluginId:Ljava/lang/String;

    .line 136
    iput-object p2, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;->currentSetting:Lcom/exteragram/messenger/plugins/models/EditTextSetting;

    .line 138
    invoke-direct {p0, v2}, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;->setWatchersEnabled(Z)V

    .line 140
    iget-boolean v3, p2, Lcom/exteragram/messenger/plugins/models/EditTextSetting;->multiline:Z

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Cells/EditTextCell;->setMultiline(Z)V

    .line 146
    iget-boolean v3, p2, Lcom/exteragram/messenger/plugins/models/EditTextSetting;->multiline:Z

    if-eqz v3, :cond_2

    const/high16 v3, 0x20000

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    const v4, 0x8c001

    or-int/2addr v3, v4

    .line 148
    iget-object v4, p0, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v4}, Landroid/widget/TextView;->getInputType()I

    move-result v4

    if-eq v4, v3, :cond_3

    .line 149
    iget-object v4, p0, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 152
    :cond_3
    iget v3, p2, Lcom/exteragram/messenger/plugins/models/EditTextSetting;->maxLength:I

    if-lez v3, :cond_4

    const/4 v4, 0x4

    .line 153
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Cells/EditTextCell;->setShowLimitWhenNear(I)V

    goto :goto_2

    :cond_4
    const/4 v3, -0x1

    .line 155
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Cells/EditTextCell;->setShowLimitWhenNear(I)V

    .line 158
    :goto_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 160
    iget-object v4, p2, Lcom/exteragram/messenger/plugins/models/EditTextSetting;->mask:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;->createInputFilter(Ljava/lang/String;)Landroid/text/InputFilter;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 162
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_5
    iget v4, p2, Lcom/exteragram/messenger/plugins/models/EditTextSetting;->maxLength:I

    if-lez v4, :cond_6

    .line 166
    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    iget v5, p2, Lcom/exteragram/messenger/plugins/models/EditTextSetting;->maxLength:I

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 170
    iget-object v4, p0, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    new-array v2, v2, [Landroid/text/InputFilter;

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/InputFilter;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_3

    .line 172
    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    new-array v2, v2, [Landroid/text/InputFilter;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 175
    :goto_3
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v2

    iget-object v3, p2, Lcom/exteragram/messenger/plugins/models/EditTextSetting;->key:Ljava/lang/String;

    iget-object v4, p2, Lcom/exteragram/messenger/plugins/models/EditTextSetting;->defaultValue:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4}, Lcom/exteragram/messenger/plugins/PluginsController;->getPluginSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 176
    iget-object v2, p0, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 179
    iget-object v2, p0, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    .line 180
    invoke-direct {p0, v1}, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;->setWatchersEnabled(Z)V

    return-void

    .line 184
    :cond_8
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/EditTextCell;->setText(Ljava/lang/CharSequence;)V

    .line 186
    :cond_9
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;->valueToSave:Ljava/lang/String;

    .line 188
    iget-object p1, p2, Lcom/exteragram/messenger/plugins/models/EditTextSetting;->hint:Ljava/lang/String;

    if-eqz p1, :cond_a

    .line 189
    iget-object p2, p0, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 192
    :cond_a
    invoke-direct {p0, v1}, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;->setWatchersEnabled(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 116
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 117
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;->flushPendingSave()V

    return-void
.end method

.method protected onFocusChanged(Z)V
    .locals 0

    .line 108
    invoke-super {p0, p1}, Lorg/telegram/ui/Cells/EditTextCell;->onFocusChanged(Z)V

    if-nez p1, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;->flushPendingSave()V

    :cond_0
    return-void
.end method
